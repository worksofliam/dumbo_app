**free

ctl-opt dftactgrp(*no);

dcl-pi P1635;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P262.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P422.rpgleinc'

dcl-ds theTable extname('T1015') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1015 LIMIT 1;

theCharVar = 'Hello from P1635';
dsply theCharVar;
P262();
P199();
P422();
return;