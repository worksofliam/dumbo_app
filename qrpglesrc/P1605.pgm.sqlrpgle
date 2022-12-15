**free

ctl-opt dftactgrp(*no);

dcl-pi P1605;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P944.rpgleinc'
/copy 'qrpgleref/P567.rpgleinc'
/copy 'qrpgleref/P882.rpgleinc'

dcl-ds T420 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T420 FROM T420 LIMIT 1;

theCharVar = 'Hello from P1605';
dsply theCharVar;
callp localProc();
P944();
P567();
P882();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1605 in the procedure';
end-proc;