**free

ctl-opt dftactgrp(*no);

dcl-pi P1564;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P861.rpgleinc'
/copy 'qrpgleref/P463.rpgleinc'
/copy 'qrpgleref/P451.rpgleinc'

dcl-ds theTable extname('T769') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T769 LIMIT 1;

theCharVar = 'Hello from P1564';
dsply theCharVar;
P861();
P463();
P451();
return;