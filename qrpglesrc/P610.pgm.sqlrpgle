**free

ctl-opt dftactgrp(*no);

dcl-pi P610;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P428.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'

dcl-ds T43 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T43 FROM T43 LIMIT 1;

theCharVar = 'Hello from P610';
dsply theCharVar;
P297();
P428();
P256();
return;