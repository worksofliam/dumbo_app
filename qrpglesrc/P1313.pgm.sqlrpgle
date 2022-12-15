**free

ctl-opt dftactgrp(*no);

dcl-pi P1313;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1016.rpgleinc'
/copy 'qrpgleref/P406.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'

dcl-ds T85 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T85 FROM T85 LIMIT 1;

theCharVar = 'Hello from P1313';
dsply theCharVar;
P1016();
P406();
P417();
return;