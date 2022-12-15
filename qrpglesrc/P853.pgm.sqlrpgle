**free

ctl-opt dftactgrp(*no);

dcl-pi P853;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P484.rpgleinc'
/copy 'qrpgleref/P415.rpgleinc'

dcl-ds theTable extname('T1600') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1600 LIMIT 1;

theCharVar = 'Hello from P853';
dsply theCharVar;
P419();
P484();
P415();
return;