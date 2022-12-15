**free

ctl-opt dftactgrp(*no);

dcl-pi P370;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'

dcl-ds T1107 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1107 FROM T1107 LIMIT 1;

theCharVar = 'Hello from P370';
dsply theCharVar;
P82();
P221();
P334();
return;