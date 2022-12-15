**free

ctl-opt dftactgrp(*no);

dcl-pi P2022;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P273.rpgleinc'
/copy 'qrpgleref/P955.rpgleinc'
/copy 'qrpgleref/P1237.rpgleinc'

dcl-ds T720 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T720 FROM T720 LIMIT 1;

theCharVar = 'Hello from P2022';
dsply theCharVar;
P273();
P955();
P1237();
return;