**free

ctl-opt dftactgrp(*no);

dcl-pi P610;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P482.rpgleinc'

dcl-ds T110 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T110 FROM T110 LIMIT 1;

theCharVar = 'Hello from P610';
dsply theCharVar;
P142();
P324();
P482();
return;