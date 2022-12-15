**free

ctl-opt dftactgrp(*no);

dcl-pi P1163;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P1162.rpgleinc'
/copy 'qrpgleref/P609.rpgleinc'

dcl-ds theTable extname('T1063') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1063 LIMIT 1;

theCharVar = 'Hello from P1163';
dsply theCharVar;
P67();
P1162();
P609();
return;