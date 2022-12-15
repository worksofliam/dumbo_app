**free

ctl-opt dftactgrp(*no);

dcl-pi P557;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P493.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'

dcl-ds T483 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T483 FROM T483 LIMIT 1;

theCharVar = 'Hello from P557';
dsply theCharVar;
P495();
P493();
P350();
return;