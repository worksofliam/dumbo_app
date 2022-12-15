**free

ctl-opt dftactgrp(*no);

dcl-pi P1812;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P264.rpgleinc'
/copy 'qrpgleref/P890.rpgleinc'
/copy 'qrpgleref/P491.rpgleinc'

dcl-ds T915 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T915 FROM T915 LIMIT 1;

theCharVar = 'Hello from P1812';
dsply theCharVar;
P264();
P890();
P491();
return;