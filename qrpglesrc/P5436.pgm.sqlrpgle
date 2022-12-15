**free

ctl-opt dftactgrp(*no);

dcl-pi P5436;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1625.rpgleinc'
/copy 'qrpgleref/P3276.rpgleinc'
/copy 'qrpgleref/P1183.rpgleinc'

dcl-ds T1575 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1575 FROM T1575 LIMIT 1;

theCharVar = 'Hello from P5436';
dsply theCharVar;
P1625();
P3276();
P1183();
return;