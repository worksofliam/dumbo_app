**free

ctl-opt dftactgrp(*no);

dcl-pi P292;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'

dcl-ds T284 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T284 FROM T284 LIMIT 1;

theCharVar = 'Hello from P292';
dsply theCharVar;
P232();
P122();
P102();
return;