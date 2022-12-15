**free

ctl-opt dftactgrp(*no);

dcl-pi P541;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P490.rpgleinc'

dcl-ds theTable extname('T202') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T202 LIMIT 1;

theCharVar = 'Hello from P541';
dsply theCharVar;
P117();
P92();
P490();
return;