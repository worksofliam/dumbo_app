**free

ctl-opt dftactgrp(*no);

dcl-pi P3586;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1218.rpgleinc'
/copy 'qrpgleref/P1397.rpgleinc'
/copy 'qrpgleref/P2085.rpgleinc'

dcl-ds T918 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T918 FROM T918 LIMIT 1;

theCharVar = 'Hello from P3586';
dsply theCharVar;
P1218();
P1397();
P2085();
return;