**free

ctl-opt dftactgrp(*no);

dcl-pi P801;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P798.rpgleinc'
/copy 'qrpgleref/P706.rpgleinc'

dcl-ds theTable extname('T214') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T214 LIMIT 1;

theCharVar = 'Hello from P801';
dsply theCharVar;
callp localProc();
P557();
P798();
P706();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P801 in the procedure';
end-proc;