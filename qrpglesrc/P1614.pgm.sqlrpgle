**free

ctl-opt dftactgrp(*no);

dcl-pi P1614;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P616.rpgleinc'
/copy 'qrpgleref/P713.rpgleinc'
/copy 'qrpgleref/P1190.rpgleinc'

dcl-ds T1620 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1620 FROM T1620 LIMIT 1;

theCharVar = 'Hello from P1614';
dsply theCharVar;
P616();
P713();
P1190();
return;