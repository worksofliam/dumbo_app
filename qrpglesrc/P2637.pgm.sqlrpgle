**free

ctl-opt dftactgrp(*no);

dcl-pi P2637;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1061.rpgleinc'
/copy 'qrpgleref/P1851.rpgleinc'
/copy 'qrpgleref/P1189.rpgleinc'

dcl-ds theTable extname('T497') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T497 LIMIT 1;

theCharVar = 'Hello from P2637';
dsply theCharVar;
P1061();
P1851();
P1189();
return;