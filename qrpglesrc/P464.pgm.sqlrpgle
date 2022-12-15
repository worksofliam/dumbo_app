**free

ctl-opt dftactgrp(*no);

dcl-pi P464;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P459.rpgleinc'
/copy 'qrpgleref/P283.rpgleinc'
/copy 'qrpgleref/P415.rpgleinc'

dcl-ds theTable extname('T1075') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1075 LIMIT 1;

theCharVar = 'Hello from P464';
dsply theCharVar;
P459();
P283();
P415();
return;