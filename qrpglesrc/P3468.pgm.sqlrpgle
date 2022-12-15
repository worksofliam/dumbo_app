**free

ctl-opt dftactgrp(*no);

dcl-pi P3468;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P575.rpgleinc'
/copy 'qrpgleref/P721.rpgleinc'
/copy 'qrpgleref/P3213.rpgleinc'

dcl-ds T542 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T542 FROM T542 LIMIT 1;

theCharVar = 'Hello from P3468';
dsply theCharVar;
P575();
P721();
P3213();
return;