**free

ctl-opt dftactgrp(*no);

dcl-pi P2140;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P493.rpgleinc'
/copy 'qrpgleref/P1489.rpgleinc'
/copy 'qrpgleref/P308.rpgleinc'

dcl-ds T829 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T829 FROM T829 LIMIT 1;

theCharVar = 'Hello from P2140';
dsply theCharVar;
P493();
P1489();
P308();
return;