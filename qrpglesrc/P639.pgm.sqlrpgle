**free

ctl-opt dftactgrp(*no);

dcl-pi P639;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds T424 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T424 FROM T424 LIMIT 1;

theCharVar = 'Hello from P639';
dsply theCharVar;
callp localProc();
P85();
P337();
P28();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P639 in the procedure';
end-proc;