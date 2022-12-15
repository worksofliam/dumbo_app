**free

ctl-opt dftactgrp(*no);

dcl-pi P468;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P406.rpgleinc'
/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds T849 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T849 FROM T849 LIMIT 1;

theCharVar = 'Hello from P468';
dsply theCharVar;
P406();
P391();
P112();
return;