**free

ctl-opt dftactgrp(*no);

dcl-pi P1175;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P906.rpgleinc'
/copy 'qrpgleref/P793.rpgleinc'
/copy 'qrpgleref/P488.rpgleinc'

dcl-ds T1130 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1130 FROM T1130 LIMIT 1;

theCharVar = 'Hello from P1175';
dsply theCharVar;
P906();
P793();
P488();
return;