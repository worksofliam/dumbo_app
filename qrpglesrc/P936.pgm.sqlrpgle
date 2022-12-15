**free

ctl-opt dftactgrp(*no);

dcl-pi P936;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P820.rpgleinc'
/copy 'qrpgleref/P738.rpgleinc'

dcl-ds theTable extname('T739') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T739 LIMIT 1;

theCharVar = 'Hello from P936';
dsply theCharVar;
callp localProc();
P27();
P820();
P738();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P936 in the procedure';
end-proc;