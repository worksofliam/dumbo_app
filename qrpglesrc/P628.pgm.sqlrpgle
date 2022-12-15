**free

ctl-opt dftactgrp(*no);

dcl-pi P628;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P316.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'

dcl-ds T968 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T968 FROM T968 LIMIT 1;

theCharVar = 'Hello from P628';
dsply theCharVar;
P316();
P1();
P350();
return;