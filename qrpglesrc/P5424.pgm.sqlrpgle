**free

ctl-opt dftactgrp(*no);

dcl-pi P5424;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2390.rpgleinc'
/copy 'qrpgleref/P2090.rpgleinc'
/copy 'qrpgleref/P3807.rpgleinc'

dcl-ds T514 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T514 FROM T514 LIMIT 1;

theCharVar = 'Hello from P5424';
dsply theCharVar;
P2390();
P2090();
P3807();
return;