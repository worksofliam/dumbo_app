**free

ctl-opt dftactgrp(*no);

dcl-pi P1225;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P368.rpgleinc'
/copy 'qrpgleref/P828.rpgleinc'
/copy 'qrpgleref/P377.rpgleinc'

dcl-ds theTable extname('T687') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T687 LIMIT 1;

theCharVar = 'Hello from P1225';
dsply theCharVar;
P368();
P828();
P377();
return;