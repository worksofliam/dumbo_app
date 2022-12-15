**free

ctl-opt dftactgrp(*no);

dcl-pi P3454;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1221.rpgleinc'
/copy 'qrpgleref/P1762.rpgleinc'
/copy 'qrpgleref/P1372.rpgleinc'

dcl-ds T619 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T619 FROM T619 LIMIT 1;

theCharVar = 'Hello from P3454';
dsply theCharVar;
callp localProc();
P1221();
P1762();
P1372();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3454 in the procedure';
end-proc;