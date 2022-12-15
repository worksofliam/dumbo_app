**free

ctl-opt dftactgrp(*no);

dcl-pi P930;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P756.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P830.rpgleinc'

dcl-ds theTable extname('T1098') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1098 LIMIT 1;

theCharVar = 'Hello from P930';
dsply theCharVar;
P756();
P103();
P830();
return;