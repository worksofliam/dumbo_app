**free

ctl-opt dftactgrp(*no);

dcl-pi P1256;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1055.rpgleinc'
/copy 'qrpgleref/P898.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'

dcl-ds T345 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T345 FROM T345 LIMIT 1;

theCharVar = 'Hello from P1256';
dsply theCharVar;
callp localProc();
P1055();
P898();
P92();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1256 in the procedure';
end-proc;