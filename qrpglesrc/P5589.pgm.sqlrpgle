**free

ctl-opt dftactgrp(*no);

dcl-pi P5589;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5098.rpgleinc'
/copy 'qrpgleref/P4694.rpgleinc'
/copy 'qrpgleref/P5135.rpgleinc'

dcl-ds T786 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T786 FROM T786 LIMIT 1;

theCharVar = 'Hello from P5589';
dsply theCharVar;
callp localProc();
P5098();
P4694();
P5135();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5589 in the procedure';
end-proc;