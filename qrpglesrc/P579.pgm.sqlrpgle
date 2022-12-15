**free

ctl-opt dftactgrp(*no);

dcl-pi P579;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P489.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'

dcl-ds T33 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T33 FROM T33 LIMIT 1;

theCharVar = 'Hello from P579';
dsply theCharVar;
P489();
P91();
P342();
return;