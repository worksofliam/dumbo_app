**free

ctl-opt dftactgrp(*no);

dcl-pi P1124;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P699.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P714.rpgleinc'

dcl-ds T1095 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1095 FROM T1095 LIMIT 1;

theCharVar = 'Hello from P1124';
dsply theCharVar;
P699();
P61();
P714();
return;