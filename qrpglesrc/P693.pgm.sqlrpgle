**free

ctl-opt dftactgrp(*no);

dcl-pi P693;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P656.rpgleinc'
/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P598.rpgleinc'

dcl-ds T401 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T401 FROM T401 LIMIT 1;

theCharVar = 'Hello from P693';
dsply theCharVar;
P656();
P200();
P598();
return;