**free

ctl-opt dftactgrp(*no);

dcl-pi P3595;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2982.rpgleinc'
/copy 'qrpgleref/P1053.rpgleinc'
/copy 'qrpgleref/P1764.rpgleinc'

dcl-ds T1207 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1207 FROM T1207 LIMIT 1;

theCharVar = 'Hello from P3595';
dsply theCharVar;
P2982();
P1053();
P1764();
return;