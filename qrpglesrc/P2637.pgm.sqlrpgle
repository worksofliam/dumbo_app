**free

ctl-opt dftactgrp(*no);

dcl-pi P2637;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2074.rpgleinc'
/copy 'qrpgleref/P2359.rpgleinc'
/copy 'qrpgleref/P2202.rpgleinc'

dcl-ds theTable extname('T1121') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1121 LIMIT 1;

theCharVar = 'Hello from P2637';
dsply theCharVar;
P2074();
P2359();
P2202();
return;