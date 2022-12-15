**free

ctl-opt dftactgrp(*no);

dcl-pi P985;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P406.rpgleinc'

dcl-ds T1237 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1237 FROM T1237 LIMIT 1;

theCharVar = 'Hello from P985';
dsply theCharVar;
P177();
P324();
P406();
return;