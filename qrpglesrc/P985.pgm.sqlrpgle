**free

ctl-opt dftactgrp(*no);

dcl-pi P985;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P869.rpgleinc'
/copy 'qrpgleref/P401.rpgleinc'
/copy 'qrpgleref/P517.rpgleinc'

dcl-ds T233 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T233 FROM T233 LIMIT 1;

theCharVar = 'Hello from P985';
dsply theCharVar;
P869();
P401();
P517();
return;