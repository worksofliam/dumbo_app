**free

ctl-opt dftactgrp(*no);

dcl-pi P406;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'

dcl-ds T1022 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1022 FROM T1022 LIMIT 1;

theCharVar = 'Hello from P406';
dsply theCharVar;
P271();
P367();
P196();
return;