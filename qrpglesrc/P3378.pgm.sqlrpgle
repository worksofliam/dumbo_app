**free

ctl-opt dftactgrp(*no);

dcl-pi P3378;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2749.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P3070.rpgleinc'

dcl-ds T825 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T825 FROM T825 LIMIT 1;

theCharVar = 'Hello from P3378';
dsply theCharVar;
P2749();
P329();
P3070();
return;