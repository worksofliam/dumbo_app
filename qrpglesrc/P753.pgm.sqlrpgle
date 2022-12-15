**free

ctl-opt dftactgrp(*no);

dcl-pi P753;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P722.rpgleinc'
/copy 'qrpgleref/P645.rpgleinc'

dcl-ds T438 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T438 FROM T438 LIMIT 1;

theCharVar = 'Hello from P753';
dsply theCharVar;
P208();
P722();
P645();
return;