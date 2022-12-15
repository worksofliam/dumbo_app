**free

ctl-opt dftactgrp(*no);

dcl-pi P4511;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4290.rpgleinc'
/copy 'qrpgleref/P2606.rpgleinc'
/copy 'qrpgleref/P4191.rpgleinc'

dcl-ds T284 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T284 FROM T284 LIMIT 1;

theCharVar = 'Hello from P4511';
dsply theCharVar;
P4290();
P2606();
P4191();
return;