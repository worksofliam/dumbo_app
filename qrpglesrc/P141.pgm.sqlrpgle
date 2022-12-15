**free

ctl-opt dftactgrp(*no);

dcl-pi P141;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'

dcl-ds T1135 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1135 FROM T1135 LIMIT 1;

theCharVar = 'Hello from P141';
dsply theCharVar;
P36();
P4();
P136();
return;