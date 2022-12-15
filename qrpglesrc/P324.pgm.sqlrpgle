**free

ctl-opt dftactgrp(*no);

dcl-pi P324;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'

dcl-ds T609 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T609 FROM T609 LIMIT 1;

theCharVar = 'Hello from P324';
dsply theCharVar;
P132();
P69();
P294();
return;