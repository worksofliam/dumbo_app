**free

ctl-opt dftactgrp(*no);

dcl-pi P2615;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P471.rpgleinc'
/copy 'qrpgleref/P667.rpgleinc'
/copy 'qrpgleref/P836.rpgleinc'

dcl-ds T465 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T465 FROM T465 LIMIT 1;

theCharVar = 'Hello from P2615';
dsply theCharVar;
P471();
P667();
P836();
return;