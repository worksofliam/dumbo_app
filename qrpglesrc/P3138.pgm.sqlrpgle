**free

ctl-opt dftactgrp(*no);

dcl-pi P3138;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P746.rpgleinc'
/copy 'qrpgleref/P3106.rpgleinc'
/copy 'qrpgleref/P2671.rpgleinc'

dcl-ds T1220 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1220 FROM T1220 LIMIT 1;

theCharVar = 'Hello from P3138';
dsply theCharVar;
P746();
P3106();
P2671();
return;