**free

ctl-opt dftactgrp(*no);

dcl-pi P1675;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P257.rpgleinc'
/copy 'qrpgleref/P584.rpgleinc'
/copy 'qrpgleref/P1176.rpgleinc'

dcl-ds theTable extname('T812') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T812 LIMIT 1;

theCharVar = 'Hello from P1675';
dsply theCharVar;
P257();
P584();
P1176();
return;