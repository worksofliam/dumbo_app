**free

ctl-opt dftactgrp(*no);

dcl-pi P3164;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2685.rpgleinc'
/copy 'qrpgleref/P1845.rpgleinc'
/copy 'qrpgleref/P2701.rpgleinc'

dcl-ds T450 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T450 FROM T450 LIMIT 1;

theCharVar = 'Hello from P3164';
dsply theCharVar;
P2685();
P1845();
P2701();
return;