**free

ctl-opt dftactgrp(*no);

dcl-pi P828;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P781.rpgleinc'

dcl-ds T346 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T346 FROM T346 LIMIT 1;

theCharVar = 'Hello from P828';
dsply theCharVar;
P242();
P293();
P781();
return;