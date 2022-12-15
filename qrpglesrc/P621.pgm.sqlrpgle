**free

ctl-opt dftactgrp(*no);

dcl-pi P621;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P576.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P261.rpgleinc'

dcl-ds T110 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T110 FROM T110 LIMIT 1;

theCharVar = 'Hello from P621';
dsply theCharVar;
callp localProc();
P576();
P288();
P261();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P621 in the procedure';
end-proc;