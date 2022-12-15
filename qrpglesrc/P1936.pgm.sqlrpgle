**free

ctl-opt dftactgrp(*no);

dcl-pi P1936;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P839.rpgleinc'
/copy 'qrpgleref/P957.rpgleinc'

dcl-ds T848 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T848 FROM T848 LIMIT 1;

theCharVar = 'Hello from P1936';
dsply theCharVar;
P276();
P839();
P957();
return;