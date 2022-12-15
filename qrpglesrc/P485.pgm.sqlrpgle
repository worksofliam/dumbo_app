**free

ctl-opt dftactgrp(*no);

dcl-pi P485;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P378.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P392.rpgleinc'

dcl-ds theTable extname('T1742') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1742 LIMIT 1;

theCharVar = 'Hello from P485';
dsply theCharVar;
P378();
P18();
P392();
return;