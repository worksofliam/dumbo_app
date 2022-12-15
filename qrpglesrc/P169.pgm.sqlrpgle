**free

ctl-opt dftactgrp(*no);

dcl-pi P169;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'

dcl-ds T118 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T118 FROM T118 LIMIT 1;

theCharVar = 'Hello from P169';
dsply theCharVar;
P57();
P35();
P164();
return;