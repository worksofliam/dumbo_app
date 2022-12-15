**free

ctl-opt dftactgrp(*no);

dcl-pi P1577;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P738.rpgleinc'
/copy 'qrpgleref/P517.rpgleinc'
/copy 'qrpgleref/P1102.rpgleinc'

dcl-ds T1125 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1125 FROM T1125 LIMIT 1;

theCharVar = 'Hello from P1577';
dsply theCharVar;
P738();
P517();
P1102();
return;