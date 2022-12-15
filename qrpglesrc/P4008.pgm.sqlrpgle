**free

ctl-opt dftactgrp(*no);

dcl-pi P4008;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2373.rpgleinc'
/copy 'qrpgleref/P1592.rpgleinc'
/copy 'qrpgleref/P1784.rpgleinc'

dcl-ds T615 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T615 FROM T615 LIMIT 1;

theCharVar = 'Hello from P4008';
dsply theCharVar;
P2373();
P1592();
P1784();
return;