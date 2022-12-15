**free

ctl-opt dftactgrp(*no);

dcl-pi P1650;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P719.rpgleinc'
/copy 'qrpgleref/P287.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'

dcl-ds T886 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T886 FROM T886 LIMIT 1;

theCharVar = 'Hello from P1650';
dsply theCharVar;
P719();
P287();
P168();
return;