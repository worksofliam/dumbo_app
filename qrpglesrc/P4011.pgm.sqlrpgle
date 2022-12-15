**free

ctl-opt dftactgrp(*no);

dcl-pi P4011;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3309.rpgleinc'
/copy 'qrpgleref/P1992.rpgleinc'
/copy 'qrpgleref/P1960.rpgleinc'

dcl-ds T185 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T185 FROM T185 LIMIT 1;

theCharVar = 'Hello from P4011';
dsply theCharVar;
callp localProc();
P3309();
P1992();
P1960();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4011 in the procedure';
end-proc;