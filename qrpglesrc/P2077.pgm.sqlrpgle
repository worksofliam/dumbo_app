**free

ctl-opt dftactgrp(*no);

dcl-pi P2077;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P1117.rpgleinc'
/copy 'qrpgleref/P418.rpgleinc'

dcl-ds theTable extname('T179') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T179 LIMIT 1;

theCharVar = 'Hello from P2077';
dsply theCharVar;
P64();
P1117();
P418();
return;