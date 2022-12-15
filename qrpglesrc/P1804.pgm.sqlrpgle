**free

ctl-opt dftactgrp(*no);

dcl-pi P1804;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P893.rpgleinc'
/copy 'qrpgleref/P1357.rpgleinc'
/copy 'qrpgleref/P545.rpgleinc'

dcl-ds theTable extname('T646') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T646 LIMIT 1;

theCharVar = 'Hello from P1804';
dsply theCharVar;
P893();
P1357();
P545();
return;