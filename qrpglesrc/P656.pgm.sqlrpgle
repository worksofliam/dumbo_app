**free

ctl-opt dftactgrp(*no);

dcl-pi P656;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P315.rpgleinc'

dcl-ds theTable extname('T1206') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1206 LIMIT 1;

theCharVar = 'Hello from P656';
dsply theCharVar;
callp localProc();
P255();
P225();
P315();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P656 in the procedure';
end-proc;